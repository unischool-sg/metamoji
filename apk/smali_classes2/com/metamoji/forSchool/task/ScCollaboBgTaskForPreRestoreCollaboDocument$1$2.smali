.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForPreRestoreCollaboDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;

.field final synthetic val$cancelAction:Ljava/lang/Runnable;

.field final synthetic val$info:Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

.field final synthetic val$newDocId:Ljava/lang/String;

.field final synthetic val$newDriveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 73
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->this$1:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->val$newDriveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->val$newDocId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->val$info:Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    iput-object p5, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->val$cancelAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->val$newDriveId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->driveId:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->val$newDocId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->docId:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;->val$info:Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsCreate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->createDate:Ljava/util/Date;

    .line 81
    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForPreRestoreCollaboDocument$1$2;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 90
    const-string v1, "NsCollaboRestoreCollaboDocumentDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboRestoreCollaboDocumentDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
