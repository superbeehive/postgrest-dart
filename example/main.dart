import 'package:postgrest/postgrest.dart';

/// Example to use with Supabase API https://supabase.io/
dynamic main() async {
  const supabaseUrl = 'http://localhost:3000';
  const supabaseKey = '';
  final client = PostgrestClient(
    supabaseUrl,
    headers: {'apikey': supabaseKey},
    schema: 'api',
  );
  try {
    final response = await client.from('todos').select();
    print(response);
  } on PostgrestException catch (e) {
    // handle PostgrestError
    print(e.code);
    print(e.message);
  }
}
