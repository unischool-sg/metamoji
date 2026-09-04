.class Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;
.super Ljava/lang/Object;
.source "UnWebUnitContainerExtender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/web/UnWebUnitContainerExtender;->handleUpdateWebPageIntenal(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/web/UnWebUnitContainerExtender;

.field final synthetic val$blob:Lcom/metamoji/cm/Blob;

.field final synthetic val$unit:Lcom/metamoji/un/web/UnWebUnit;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/un/web/UnWebUnitContainerExtender;Lcom/metamoji/cm/Blob;Lcom/metamoji/un/web/UnWebUnit;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 134
    iput-object p1, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->this$0:Lcom/metamoji/un/web/UnWebUnitContainerExtender;

    iput-object p2, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->val$blob:Lcom/metamoji/cm/Blob;

    iput-object p3, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->val$unit:Lcom/metamoji/un/web/UnWebUnit;

    iput-object p4, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 139
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "ImageQualityChoice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget v3, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_Message:I

    sget v4, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_Title:I

    sget v5, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_Standard:I

    sget v6, Lcom/metamoji/noteanytime/R$string;->Image_Resolution_High:I

    new-instance v7, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1$1;

    invoke-direct {v7, p0}, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1$1;-><init>(Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;)V

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/metamoji/cm/CmUtils;->selectDialog(IIIILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->val$blob:Lcom/metamoji/cm/Blob;

    invoke-static {v0, v2}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->imageFromBlob(Lcom/metamoji/cm/Blob;Z)Lcom/metamoji/cm/Blob;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->val$unit:Lcom/metamoji/un/web/UnWebUnit;

    iget-object v2, p0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/un/web/UnWebUnit;->replaceURL(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    return-void
.end method
