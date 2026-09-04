.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$9;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addDistributeSharedDriveData(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

.field final synthetic val$driveID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$9;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$9;->val$driveID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$9;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$9;->val$driveID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->-$$Nest$maddMemberFromSharedDriveForSchool(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;)V

    return-void
.end method
