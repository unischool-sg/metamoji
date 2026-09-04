.class Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;
.super Ljava/lang/Object;
.source "UnWebUnitContainerExtender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/web/UnWebUnitContainerExtender;->handleAddWebUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/web/UnWebUnitContainerExtender;

.field final synthetic val$container:Lcom/metamoji/nt/NtUnitController;

.field final synthetic val$context:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/un/web/UnWebUnitContainerExtender;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->this$0:Lcom/metamoji/un/web/UnWebUnitContainerExtender;

    iput-object p2, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->val$context:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->val$container:Lcom/metamoji/nt/NtUnitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 192
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "ImageQualityChoice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget v1, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_Message:I

    sget v2, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_Title:I

    sget v3, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_Standard:I

    sget v4, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_High:I

    new-instance v5, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2$1;

    invoke-direct {v5, p0}, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2$1;-><init>(Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;)V

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cm/CmUtils;->selectDialog(IIIILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->this$0:Lcom/metamoji/un/web/UnWebUnitContainerExtender;

    iget-object v1, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->val$context:Lcom/metamoji/cm/CmContext;

    iget-object v2, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;->val$container:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/web/UnWebUnitContainerExtender;->addImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method
