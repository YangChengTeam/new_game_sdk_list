.class final Lcom/unionpay/mobile/android/pro/views/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/x;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/x;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/af;->a:Lcom/unionpay/mobile/android/pro/views/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/af;->a:Lcom/unionpay/mobile/android/pro/views/x;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/x;->C(Lcom/unionpay/mobile/android/pro/views/x;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/af;->a:Lcom/unionpay/mobile/android/pro/views/x;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/x;->D(Lcom/unionpay/mobile/android/pro/views/x;)Lcom/unionpay/mobile/android/widgets/m;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/af;->a:Lcom/unionpay/mobile/android/pro/views/x;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/af;->a:Lcom/unionpay/mobile/android/pro/views/x;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/x;->E(Lcom/unionpay/mobile/android/pro/views/x;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pro/views/x;->f(Lcom/unionpay/mobile/android/pro/views/x;Ljava/lang/String;)V

    return-void
.end method
