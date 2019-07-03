.class public Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpRedirectException;
.super Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpRedirectException;->setResult(Ljava/lang/String;)V

    return-void
.end method
