.class Lcom/duoyou/gamesdk/c/ui/WebViewActivity$2;
.super Landroid/webkit/WebChromeClient;


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

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$2;->a:Lcom/duoyou/gamesdk/c/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$2;->a:Lcom/duoyou/gamesdk/c/ui/WebViewActivity;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a(Lcom/duoyou/gamesdk/c/ui/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
