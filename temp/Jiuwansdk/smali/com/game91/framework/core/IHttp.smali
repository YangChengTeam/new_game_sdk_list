.class public interface abstract Lcom/game91/framework/core/IHttp;
.super Ljava/lang/Object;
.source "IHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/core/IHttp$CallError;,
        Lcom/game91/framework/core/IHttp$CallString;,
        Lcom/game91/framework/core/IHttp$CallPlugin;,
        Lcom/game91/framework/core/IHttp$CallPay;,
        Lcom/game91/framework/core/IHttp$CallLogin;,
        Lcom/game91/framework/core/IHttp$CallInit;
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V
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
            ">;",
            "Lcom/game91/framework/core/IHttp$CallString;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract init(Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallInit;Lcom/game91/framework/core/IHttp$CallError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallInit;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract login(Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallLogin;Lcom/game91/framework/core/IHttp$CallError;)V
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
            ">;",
            "Lcom/game91/framework/core/IHttp$CallLogin;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract notify(Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/framework/callback/PayInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallString;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract pay(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallPay;Lcom/game91/framework/core/IHttp$CallError;)V
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
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallPay;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract plugin(Lcom/game91/framework/core/IHttp$CallPlugin;Lcom/game91/framework/core/IHttp$CallError;)V
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V
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
            ">;",
            "Lcom/game91/framework/core/IHttp$CallString;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract submit(Ljava/util/Map;Lcom/game91/framework/core/IHttp$CallString;Lcom/game91/framework/core/IHttp$CallError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/core/IHttp$CallString;",
            "Lcom/game91/framework/core/IHttp$CallError;",
            ")V"
        }
    .end annotation
.end method
