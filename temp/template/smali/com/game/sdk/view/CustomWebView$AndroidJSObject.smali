.class Lcom/game/sdk/view/CustomWebView$AndroidJSObject;
.super Ljava/lang/Object;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/view/CustomWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AndroidJSObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/view/CustomWebView;


# direct methods
.method constructor <init>(Lcom/game/sdk/view/CustomWebView;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/game/sdk/view/CustomWebView$AndroidJSObject;->this$0:Lcom/game/sdk/view/CustomWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public search(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchKey"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 138
    return-void
.end method
