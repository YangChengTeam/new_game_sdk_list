.class final Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;
.super Ljava/lang/Object;
.source "DarkCodeGsonResponseBodyConverter.java"

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
        "<",
        "Lcom/game91/library/okhttp/ResponseBody;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final DARK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lcom/game91/library/gson/Gson;Lcom/game91/library/gson/TypeAdapter;)V
    .locals 1
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
    .line 40
    .local p0, "this":Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;, "Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter<TT;>;"
    .local p2, "adapter":Lcom/game91/library/gson/TypeAdapter;, "Lcom/game91/library/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;->DARK_LIST:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;->gson:Lcom/game91/library/gson/Gson;

    .line 42
    iput-object p2, p0, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;->adapter:Lcom/game91/library/gson/TypeAdapter;

    .line 43
    return-void
.end method

.method private getValue(Lorg/json/JSONObject;)J
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 106
    .local p0, "this":Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;, "Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter<TT;>;"
    :try_start_0
    const-string v0, "errorCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 115
    :goto_0
    return-wide v0

    .line 107
    :catch_0
    move-exception v0

    .line 111
    :try_start_1
    const-string v0, "errorCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 115
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private startErrorActivity(Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;, "Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 48
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.game91.framework.act.DarkListActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 59
    :try_start_1
    invoke-static {}, Lcom/game91/framework/impl/GameSystems;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 60
    .restart local v0    # "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.game91.sdk.activity.DarkListActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 65
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public convert(Lcom/game91/library/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 12
    .param p1, "value"    # Lcom/game91/library/okhttp/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/library/okhttp/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;, "Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter<TT;>;"
    :try_start_0
    invoke-static {p1}, Lcom/game91/framework/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v8

    const-string v9, "charset"

    invoke-virtual {v8, v9}, Lcom/game91/framework/reflect/Reflect;->call(Ljava/lang/String;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/game91/framework/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 74
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-static {p1}, Lcom/game91/framework/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/game91/framework/reflect/Reflect;

    move-result-object v8

    const-string v9, "delegate"

    invoke-virtual {v8, v9}, Lcom/game91/framework/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game91/library/okhttp/ResponseBody;

    .line 75
    .local v5, "response":Lcom/game91/library/okhttp/ResponseBody;
    invoke-virtual {v5}, Lcom/game91/library/okhttp/ResponseBody;->source()Lcom/game91/library/okio/BufferedSource;

    move-result-object v8

    const-wide v10, 0x7fffffffffffffffL

    invoke-interface {v8, v10, v11}, Lcom/game91/library/okio/BufferedSource;->request(J)Z

    .line 76
    invoke-virtual {v5}, Lcom/game91/library/okhttp/ResponseBody;->source()Lcom/game91/library/okio/BufferedSource;

    move-result-object v8

    invoke-interface {v8}, Lcom/game91/library/okio/BufferedSource;->buffer()Lcom/game91/library/okio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/game91/library/okio/Buffer;->clone()Lcom/game91/library/okio/Buffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/game91/library/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "responseStr":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v8, "errorCode"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 79
    invoke-direct {p0, v1}, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;->getValue(Lorg/json/JSONObject;)J

    move-result-wide v2

    .line 80
    .local v2, "code":J
    const-wide/16 v8, 0x1f5

    cmp-long v8, v2, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0x257

    cmp-long v8, v2, v8

    if-gtz v8, :cond_0

    .line 81
    const-string v8, ""

    invoke-direct {p0, v8}, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;->startErrorActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "code":J
    .end local v5    # "response":Lcom/game91/library/okhttp/ResponseBody;
    .end local v6    # "responseStr":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;->gson:Lcom/game91/library/gson/Gson;

    invoke-virtual {p1}, Lcom/game91/library/okhttp/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/game91/library/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/game91/library/gson/stream/JsonReader;

    move-result-object v4

    .line 92
    .local v4, "jsonReader":Lcom/game91/library/gson/stream/JsonReader;
    :try_start_1
    iget-object v8, p0, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;->adapter:Lcom/game91/library/gson/TypeAdapter;

    invoke-virtual {v8, v4}, Lcom/game91/library/gson/TypeAdapter;->read(Lcom/game91/library/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v7

    .line 93
    .local v7, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4}, Lcom/game91/library/gson/stream/JsonReader;->peek()Lcom/game91/library/gson/stream/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/game91/library/gson/stream/JsonToken;->END_DOCUMENT:Lcom/game91/library/gson/stream/JsonToken;

    if-eq v8, v9, :cond_1

    .line 94
    new-instance v8, Lcom/game91/library/gson/JsonIOException;

    const-string v9, "JSON document was not fully consumed."

    invoke-direct {v8, v9}, Lcom/game91/library/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v7    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v8

    invoke-virtual {p1}, Lcom/game91/library/okhttp/ResponseBody;->close()V

    throw v8

    .restart local v7    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {p1}, Lcom/game91/library/okhttp/ResponseBody;->close()V

    .line 96
    return-object v7

    .line 86
    .end local v4    # "jsonReader":Lcom/game91/library/gson/stream/JsonReader;
    .end local v7    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v8

    goto :goto_0

    .line 84
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;, "Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter<TT;>;"
    check-cast p1, Lcom/game91/library/okhttp/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;->convert(Lcom/game91/library/okhttp/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final string(Lcom/game91/library/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p1, "bufferedSource"    # Lcom/game91/library/okio/BufferedSource;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;, "Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter<TT;>;"
    move-object v1, p1

    .line 121
    .local v1, "source":Lcom/game91/library/okio/BufferedSource;
    :try_start_0
    invoke-static {v1, p2}, Lcom/game91/library/okhttp/internal/Util;->bomAwareCharset(Lcom/game91/library/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 122
    .local v0, "charset1":Ljava/nio/charset/Charset;
    invoke-interface {v1, v0}, Lcom/game91/library/okio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 124
    invoke-static {v1}, Lcom/game91/library/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    return-object v2

    .line 124
    .end local v0    # "charset1":Ljava/nio/charset/Charset;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/game91/library/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method
