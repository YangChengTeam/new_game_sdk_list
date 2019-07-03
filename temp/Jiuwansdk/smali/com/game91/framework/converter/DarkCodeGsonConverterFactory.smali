.class public final Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;
.super Lcom/game91/library/retrofit/Converter$Factory;
.source "DarkCodeGsonConverterFactory.java"


# instance fields
.field private final gson:Lcom/game91/library/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/game91/library/gson/Gson;)V
    .locals 0
    .param p1, "gson"    # Lcom/game91/library/gson/Gson;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/game91/library/retrofit/Converter$Factory;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;->gson:Lcom/game91/library/gson/Gson;

    .line 41
    return-void
.end method

.method public static create()Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/game91/library/gson/Gson;

    invoke-direct {v0}, Lcom/game91/library/gson/Gson;-><init>()V

    invoke-static {v0}, Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;->create(Lcom/game91/library/gson/Gson;)Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/game91/library/gson/Gson;)Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;
    .locals 2
    .param p0, "gson"    # Lcom/game91/library/gson/Gson;

    .prologue
    .line 33
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    new-instance v0, Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;

    invoke-direct {v0, p0}, Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;-><init>(Lcom/game91/library/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lcom/game91/library/retrofit/Retrofit;)Lcom/game91/library/retrofit/Converter;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "parameterAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "methodAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "retrofit"    # Lcom/game91/library/retrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/game91/library/retrofit/Retrofit;",
            ")",
            "Lcom/game91/library/retrofit/Converter",
            "<*",
            "Lcom/game91/library/okhttp/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;->gson:Lcom/game91/library/gson/Gson;

    invoke-static {p1}, Lcom/game91/library/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/game91/library/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/library/gson/Gson;->getAdapter(Lcom/game91/library/gson/reflect/TypeToken;)Lcom/game91/library/gson/TypeAdapter;

    move-result-object v0

    .line 54
    .local v0, "adapter":Lcom/game91/library/gson/TypeAdapter;, "Lcom/game91/library/gson/TypeAdapter<*>;"
    new-instance v1, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;

    iget-object v2, p0, Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;->gson:Lcom/game91/library/gson/Gson;

    invoke-direct {v1, v2, v0}, Lcom/game91/framework/converter/DarkCodeGsonRequestBodyConverter;-><init>(Lcom/game91/library/gson/Gson;Lcom/game91/library/gson/TypeAdapter;)V

    return-object v1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/game91/library/retrofit/Retrofit;)Lcom/game91/library/retrofit/Converter;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lcom/game91/library/retrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/game91/library/retrofit/Retrofit;",
            ")",
            "Lcom/game91/library/retrofit/Converter",
            "<",
            "Lcom/game91/library/okhttp/ResponseBody;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v1, p0, Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;->gson:Lcom/game91/library/gson/Gson;

    invoke-static {p1}, Lcom/game91/library/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/game91/library/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/game91/library/gson/Gson;->getAdapter(Lcom/game91/library/gson/reflect/TypeToken;)Lcom/game91/library/gson/TypeAdapter;

    move-result-object v0

    .line 47
    .local v0, "adapter":Lcom/game91/library/gson/TypeAdapter;, "Lcom/game91/library/gson/TypeAdapter<*>;"
    new-instance v1, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;

    iget-object v2, p0, Lcom/game91/framework/converter/DarkCodeGsonConverterFactory;->gson:Lcom/game91/library/gson/Gson;

    invoke-direct {v1, v2, v0}, Lcom/game91/framework/converter/DarkCodeGsonResponseBodyConverter;-><init>(Lcom/game91/library/gson/Gson;Lcom/game91/library/gson/TypeAdapter;)V

    return-object v1
.end method
