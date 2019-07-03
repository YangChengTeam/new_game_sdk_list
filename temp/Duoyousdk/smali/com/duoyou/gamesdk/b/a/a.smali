.class public final Lcom/duoyou/gamesdk/b/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "userKey"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "member/unbindphone"

    invoke-static {v1, v0, p1}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->j()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "action"

    const-string v2, "mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mobile"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "verifyCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member/login"

    invoke-static {v0, v1, p3}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->j()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mobile"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "verifyCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "passwd"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member/mobilereg"

    invoke-static {v0, v1, p4}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "member/gamehandle"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->j()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "action"

    const-string v2, "account"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "passwd"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member/login"

    invoke-static {v0, v1, p3}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mobile"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "verifyCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "passwd"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member/retriepasswd"

    invoke-static {v0, v1, p4}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->j()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "username"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "passwd"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member/reg"

    invoke-static {v0, v1, p3}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "userKey"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "verifyCode"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "member/bindphone"

    invoke-static {v1, v0, p3}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mobile"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "verifyCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scene"

    const-string v2, "verifyMobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member/checkcode"

    invoke-static {v0, v1, p3}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "scene"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mobile"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member/sendcode"

    invoke-static {v0, v1, p3}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oldPwd"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "passwd"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member/changepasswd"

    invoke-static {v0, v1, p3}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "authCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "member/certif"

    invoke-static {v0, v1, p3}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method
