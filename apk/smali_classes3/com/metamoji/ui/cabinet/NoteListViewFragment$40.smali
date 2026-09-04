.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$40;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->editShareNoteInDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/cabinet/NoteListViewFragment$IDriveDocumentEditorOpener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result_copy:Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4704
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$40;->val$result_copy:Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4707
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$40;->val$result_copy:Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void
.end method
