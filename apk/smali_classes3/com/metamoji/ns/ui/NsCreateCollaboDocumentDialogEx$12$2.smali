.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$2;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 815
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$2;->this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$2;->this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$2;->this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;

    iget-object v1, v1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;->val$dlg:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote;->DriveID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->-$$Nest$maddMemberFromSharedDriveForSchool(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;)V

    return-void
.end method
