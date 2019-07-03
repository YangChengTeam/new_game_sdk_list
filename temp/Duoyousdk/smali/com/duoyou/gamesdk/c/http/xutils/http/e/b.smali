.class public Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;
.super Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;


# static fields
.field private static final l:Ljava/net/CookieManager;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/io/InputStream;

.field private j:Ljava/net/HttpURLConnection;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/net/CookieManager;

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->INSTANCE:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->l:Ljava/net/CookieManager;

    return-void
.end method

.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Ljava/lang/reflect/Type;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->h:Z

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->i:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    iput v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->k:I

    return-void
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    iget-object v3, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x26

    if-ne v0, v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/high16 v9, 0x40000

    const/16 v8, 0x13

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->h:Z

    iput v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->k:I

    new-instance v3, Ljava/net/URL;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->k()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    const-string v4, "Connection"

    const-string v5, "close"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v4}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->n()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v4}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->m()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->z()Lcom/duoyou/gamesdk/c/http/xutils/http/b/e;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->l:Ljava/net/CookieManager;

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, v1, v4}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    const-string v4, "Cookie"

    const-string v5, ";"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;

    iget-object v4, v0, Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->f:Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->f:Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;

    invoke-interface {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V

    :cond_8
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b()Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->permitsRequestBody(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e()Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;

    move-result-object v1

    if-eqz v1, :cond_b

    instance-of v0, v1, Lcom/duoyou/gamesdk/c/http/xutils/http/c/e;

    if-eqz v0, :cond_9

    move-object v0, v1

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/e;

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    invoke-interface {v0, v4}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/e;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/d;)V

    :cond_9
    invoke-interface {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-interface {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_f

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :goto_5
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;->a(Ljava/io/OutputStream;)V

    :cond_b
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->l:Ljava/net/CookieManager;

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->k:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->f:Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->f:Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;

    invoke-interface {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/f;->b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V

    :cond_d
    iget v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->k:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->k:I

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_12

    :cond_e
    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;

    iget v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->k:I

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-class v4, Ljava/net/HttpURLConnection;

    const-string v5, "method"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v5, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v1

    throw v0

    :cond_f
    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto/16 :goto_5

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_11

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto/16 :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_12
    iget v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->k:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_13

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;

    iget v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->k:I

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    :try_start_4
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;->setResult(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->h:Z

    return-void

    :catch_4
    move-exception v1

    goto :goto_7
.end method

.method public a_()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->h:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->i:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->i:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->i:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->h:Z

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->h:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->p()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(J)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b()Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->permitsCache(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->g()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    const-string v3, "If-Modified-Since"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    const-string v3, "If-None-Match"

    invoke-virtual {v2, v3, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->i:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->i:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->i:Ljava/io/InputStream;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public h()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :goto_0
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    int-to-long v0, v0

    :cond_0
    :goto_1
    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->k:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->g()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const/16 v0, 0x194

    goto :goto_0
.end method

.method public j()J
    .locals 8

    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    const-string v3, "Cache-Control"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "max-age"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_3
    :goto_1
    cmp-long v2, v0, v6

    if-gtz v2, :cond_4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    :cond_4
    cmp-long v2, v0, v6

    if-gtz v2, :cond_5

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->q()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->q()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_5
    cmp-long v2, v0, v6

    if-gtz v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public k()J
    .locals 4

    const-string v0, "Last-Modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
