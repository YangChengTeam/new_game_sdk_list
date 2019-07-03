.class Lcom/duoyou/gamesdk/f/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/f/f;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/f$2;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$2;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->a(Lcom/duoyou/gamesdk/f/f;)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$2;->a:Lcom/duoyou/gamesdk/f/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/f/f;->a(Lcom/duoyou/gamesdk/f/f;I)I

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f$2;->a:Lcom/duoyou/gamesdk/f/f;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/f;->a(Lcom/duoyou/gamesdk/f/f;)V

    return-void
.end method
