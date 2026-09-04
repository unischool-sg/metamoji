.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$1;
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

    .line 793
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12$1;->this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 796
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SAME_BOX_ALREADY_APPENDED:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->modalConfirmDialog(II)V

    return-void
.end method
