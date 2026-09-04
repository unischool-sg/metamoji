.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$orgSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)V
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

    .line 6256
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;->val$docId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;->val$orgSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 6258
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$50$1;->val$orgSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mnewNoteTemplateBasedOnNote2(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)V

    return-void
.end method
