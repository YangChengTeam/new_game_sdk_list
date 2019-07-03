.class public final Lcom/ipaynow/plugin/log/LogUtils;
.super Ljava/lang/Object;


# static fields
.field private static I:Lcom/ipaynow/plugin/log/b;

.field public static J:Z

.field public static K:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ipaynow/plugin/log/b;

    invoke-direct {v0}, Lcom/ipaynow/plugin/log/b;-><init>()V

    sput-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ipaynow/plugin/log/LogUtils;->J:Z

    const-string v0, ""

    sput-object v0, Lcom/ipaynow/plugin/log/LogUtils;->K:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/plugin/log/b;->d(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {p0, p1}, Lcom/ipaynow/plugin/log/b;->d(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ipaynow/plugin/log/b;->d(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/plugin/log/b;->e(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {p0, p1}, Lcom/ipaynow/plugin/log/b;->w(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ipaynow/plugin/log/b;->e(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/plugin/log/b;->i(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {p0, p1}, Lcom/ipaynow/plugin/log/b;->i(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ipaynow/plugin/log/b;->b(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static json(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "JSON{json is null}"

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/log/b;->d(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/log/b;->d(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/log/b;->e(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/log/b;->d(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/plugin/log/b;->v(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {p0, p1}, Lcom/ipaynow/plugin/log/b;->v(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ipaynow/plugin/log/b;->c(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/plugin/log/b;->w(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {p0, p1}, Lcom/ipaynow/plugin/log/b;->w(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ipaynow/plugin/log/b;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static wtf(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/plugin/log/b;->a(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/log/LogUtils;->I:Lcom/ipaynow/plugin/log/b;

    invoke-static {}, Lcom/ipaynow/plugin/log/a/b;->s()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ipaynow/plugin/log/b;->f(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
