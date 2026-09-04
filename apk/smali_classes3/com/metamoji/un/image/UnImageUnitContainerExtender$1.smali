.class Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;
.super Ljava/lang/Object;
.source "UnImageUnitContainerExtender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/image/UnImageUnitContainerExtender;->handleInternalAddImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/image/UnImageUnitContainerExtender;

.field final synthetic val$container:Lcom/metamoji/nt/NtUnitController;

.field final synthetic val$context:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/un/image/UnImageUnitContainerExtender;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
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

    .line 122
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;->this$0:Lcom/metamoji/un/image/UnImageUnitContainerExtender;

    iput-object p2, p0, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;->val$context:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;->val$container:Lcom/metamoji/nt/NtUnitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 127
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "ImageQualityChoice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget v3, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_Message:I

    sget v4, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_Title:I

    sget v5, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_Standard:I

    sget v6, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_High:I

    new-instance v7, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1$1;

    invoke-direct {v7, p0}, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1$1;-><init>(Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;)V

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/metamoji/cm/CmUtils;->selectDialog(IIIILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;->val$context:Lcom/metamoji/cm/CmContext;

    const-string v1, "highResolution"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;->this$0:Lcom/metamoji/un/image/UnImageUnitContainerExtender;

    iget-object v1, p0, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;->val$context:Lcom/metamoji/cm/CmContext;

    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;->val$container:Lcom/metamoji/nt/NtUnitController;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->-$$Nest$mhandleAddImageUnit(Lcom/metamoji/un/image/UnImageUnitContainerExtender;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method
