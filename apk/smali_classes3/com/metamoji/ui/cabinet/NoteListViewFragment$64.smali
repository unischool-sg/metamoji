.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleDistributeMultiNotesToMultiBoxes(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$docIds:Ljava/util/List;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$isDragDrop:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/util/List;Z)V
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

    .line 7257
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;->val$docIds:Ljava/util/List;

    iput-boolean p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;->val$isDragDrop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completion(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 7263
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;->val$driveId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;->val$docIds:Ljava/util/List;

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$64;->val$isDragDrop:Z

    invoke-static {p1, v0, v1}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleDistributeMultiNotesToMultiBoxes(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method
