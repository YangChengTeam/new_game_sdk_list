.class final Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;
.super Ljava/lang/Object;
.source "DarkCodeGsonRequestBodyConverter.java"

# interfaces
.implements Lcom/game91/library/retrofit/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/game91/library/retrofit/Converter",
        "<TT;",
        "Lcom/game91/library/okhttp/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lcom/game91/library/okhttp/MediaType;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final adapter:Lcom/game91/library/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game91/library/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/game91/library/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lcom/game91/library/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/game91/library/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;->MEDIA_TYPE:Lcom/game91/library/okhttp/MediaType;

    .line 22
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lcom/game91/library/gson/Gson;Lcom/game91/library/gson/TypeAdapter;)V
    .locals 0
    .param p1, "gson"    # Lcom/game91/library/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/library/gson/Gson;",
            "Lcom/game91/library/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;, "Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter<TT;>;"
    .local p2, "adapter":Lcom/game91/library/gson/TypeAdapter;, "Lcom/game91/library/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;->gson:Lcom/game91/library/gson/Gson;

    .line 29
    iput-object p2, p0, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;->adapter:Lcom/game91/library/gson/TypeAdapter;

    .line 30
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Lcom/game91/library/okhttp/RequestBody;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/game91/library/okhttp/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;, "Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/game91/library/okio/Buffer;

    invoke-direct {v0}, Lcom/game91/library/okio/Buffer;-><init>()V

    .line 34
    .local v0, "buffer":Lcom/game91/library/okio/Buffer;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lcom/game91/library/okio/Buffer;->outputStream()Ljava/io/OutputStream;

    move-result-object v3

    sget-object v4, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 35
    .local v2, "writer":Ljava/io/Writer;
    iget-object v3, p0, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;->gson:Lcom/game91/library/gson/Gson;

    invoke-virtual {v3, v2}, Lcom/game91/library/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/game91/library/gson/stream/JsonWriter;

    move-result-object v1

    .line 36
    .local v1, "jsonWriter":Lcom/game91/library/gson/stream/JsonWriter;
    iget-object v3, p0, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;->adapter:Lcom/game91/library/gson/TypeAdapter;

    invoke-virtual {v3, v1, p1}, Lcom/game91/library/gson/TypeAdapter;->write(Lcom/game91/library/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v1}, Lcom/game91/library/gson/stream/JsonWriter;->close()V

    .line 38
    sget-object v3, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;->MEDIA_TYPE:Lcom/game91/library/okhttp/MediaType;

    invoke-virtual {v0}, Lcom/game91/library/okio/Buffer;->readByteString()Lcom/game91/library/okio/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/game91/library/okhttp/RequestBody;->create(Lcom/game91/library/okhttp/MediaType;Lcom/game91/library/okio/ByteString;)Lcom/game91/library/okhttp/RequestBody;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;, "Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;->convert(Ljava/lang/Object;)Lcom/game91/library/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method
