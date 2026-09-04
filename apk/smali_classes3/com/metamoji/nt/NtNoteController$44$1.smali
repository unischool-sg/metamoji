.class Lcom/metamoji/nt/NtNoteController$44$1;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController$44;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtNoteController$44;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController$44;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5641
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$44$1;->this$1:Lcom/metamoji/nt/NtNoteController$44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5644
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_PastePageFromDoc_FailedToLoadDocument_UnsupportedVersion:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$44$1;->this$1:Lcom/metamoji/nt/NtNoteController$44;

    iget-object v1, v1, Lcom/metamoji/nt/NtNoteController$44;->val$errorMessage:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
