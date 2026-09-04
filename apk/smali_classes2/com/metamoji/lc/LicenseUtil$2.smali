.class Lcom/metamoji/lc/LicenseUtil$2;
.super Ljava/lang/Object;
.source "LicenseUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/LicenseUtil;->showActivateResultDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lc/LicenseUtil$ActivateCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/metamoji/lc/LicenseUtil$ActivateCallback;

.field final synthetic val$isOK:Z


# direct methods
.method constructor <init>(Lcom/metamoji/lc/LicenseUtil$ActivateCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 454
    iput-object p1, p0, Lcom/metamoji/lc/LicenseUtil$2;->val$callback:Lcom/metamoji/lc/LicenseUtil$ActivateCallback;

    iput-boolean p2, p0, Lcom/metamoji/lc/LicenseUtil$2;->val$isOK:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 457
    iget-object p1, p0, Lcom/metamoji/lc/LicenseUtil$2;->val$callback:Lcom/metamoji/lc/LicenseUtil$ActivateCallback;

    iget-boolean p2, p0, Lcom/metamoji/lc/LicenseUtil$2;->val$isOK:Z

    invoke-interface {p1, p2}, Lcom/metamoji/lc/LicenseUtil$ActivateCallback;->onResult(Z)V

    return-void
.end method
