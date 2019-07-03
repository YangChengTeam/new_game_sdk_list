.class public interface abstract Lcom/game91/framework/http/DelegateApi;
.super Ljava/lang/Object;
.source "DelegateApi.java"


# static fields
.field public static final HOST:Ljava/lang/String; = "http://sdk.jieyitong.cn"

.field public static final LOCAL_HOST:Ljava/lang/String; = "http://yx.maimenggou.cn"

.field public static final LOCAL_HOST1:Ljava/lang/String; = "http://172.16.5.155"


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/game91/library/retrofit/http/Url;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/HeaderMap;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation runtime Lcom/game91/library/retrofit/http/GET;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game91/library/rxjava/Observable",
            "<",
            "Lcom/game91/framework/http/JsonBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init(Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation runtime Lcom/game91/library/retrofit/http/GET;
        value = "/android/init"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game91/library/rxjava/Observable",
            "<",
            "Lcom/game91/framework/http/InitBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract login(Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/HeaderMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/FieldMap;
        .end annotation
    .end param
    .annotation runtime Lcom/game91/library/retrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lcom/game91/library/retrofit/http/POST;
        value = "union/login"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game91/library/rxjava/Observable",
            "<",
            "Lcom/game91/framework/http/UserBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notify(Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/HeaderMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation runtime Lcom/game91/library/retrofit/http/GET;
        value = "/union/pay/query"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game91/library/rxjava/Observable",
            "<",
            "Lcom/game91/framework/http/OrderBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pay(Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/HeaderMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/FieldMap;
        .end annotation
    .end param
    .annotation runtime Lcom/game91/library/retrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lcom/game91/library/retrofit/http/POST;
        value = "union/pay"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game91/library/rxjava/Observable",
            "<",
            "Lcom/game91/framework/http/PayBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract plugin()Lcom/game91/library/rxjava/Observable;
    .annotation runtime Lcom/game91/library/retrofit/http/GET;
        value = "android/plugins"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/game91/library/rxjava/Observable",
            "<",
            "Lcom/game91/framework/http/PluginBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/game91/library/retrofit/http/Url;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/HeaderMap;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/FieldMap;
        .end annotation
    .end param
    .annotation runtime Lcom/game91/library/retrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lcom/game91/library/retrofit/http/POST;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game91/library/rxjava/Observable",
            "<",
            "Lcom/game91/framework/http/JsonBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract submit(Ljava/util/Map;Ljava/util/Map;)Lcom/game91/library/rxjava/Observable;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/HeaderMap;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lcom/game91/library/retrofit/http/FieldMap;
        .end annotation
    .end param
    .annotation runtime Lcom/game91/library/retrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lcom/game91/library/retrofit/http/POST;
        value = "general/userrole"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game91/library/rxjava/Observable",
            "<",
            "Lcom/game91/framework/http/JsonBean;",
            ">;"
        }
    .end annotation
.end method
