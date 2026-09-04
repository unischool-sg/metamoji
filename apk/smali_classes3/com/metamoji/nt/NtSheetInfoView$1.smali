.class Lcom/metamoji/nt/NtSheetInfoView$1;
.super Ljava/lang/Object;
.source "NtSheetInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSheetInfoView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtSheetInfoView;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtSheetInfoView;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 74
    iput-object p1, p0, Lcom/metamoji/nt/NtSheetInfoView$1;->this$0:Lcom/metamoji/nt/NtSheetInfoView;

    iput-object p2, p0, Lcom/metamoji/nt/NtSheetInfoView$1;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtSheetInfoView$1;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/metamoji/nt/NtSheetInfoView$1;->val$driveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/metamoji/nt/NtSheetInfoView$1;->val$docId:Ljava/lang/String;

    new-instance v2, Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/SdRequestCanceller;-><init>()V

    new-instance v3, Lcom/metamoji/nt/NtSheetInfoView$1$1;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/NtSheetInfoView$1$1;-><init>(Lcom/metamoji/nt/NtSheetInfoView$1;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method
