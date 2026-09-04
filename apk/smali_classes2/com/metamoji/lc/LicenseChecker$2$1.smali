.class Lcom/metamoji/lc/LicenseChecker$2$1;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/LicenseChecker$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lc/LicenseChecker$2;


# direct methods
.method constructor <init>(Lcom/metamoji/lc/LicenseChecker$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/metamoji/lc/LicenseChecker$2$1;->this$0:Lcom/metamoji/lc/LicenseChecker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-static {v0}, Lcom/metamoji/lc/LicenseChecker;->stopLicenseChechkTask(Z)V

    return-void
.end method
