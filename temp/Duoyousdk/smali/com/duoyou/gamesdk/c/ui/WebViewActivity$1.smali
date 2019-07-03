.class Lcom/duoyou/gamesdk/c/ui/WebViewActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/c/ui/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/ui/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$1;->a:Lcom/duoyou/gamesdk/c/ui/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$1;->a:Lcom/duoyou/gamesdk/c/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->finish()V

    return-void
.end method
