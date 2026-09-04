.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$62;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->handleMergeNotes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$docIds:Ljava/util/ArrayList;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/util/ArrayList;)V
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

    .line 7214
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$62;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$62;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$62;->val$docIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 7217
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$62;->val$driveId:Ljava/lang/String;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$62;->val$docIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleMergeNotes(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
