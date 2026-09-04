.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->newNoteTemplateBasedOnNote2(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$orgSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/dialog/DocumentSettings2;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)V
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

    .line 6277
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$driveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$docId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$orgSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 5

    if-eqz p3, :cond_3

    .line 6281
    new-instance p1, Lcom/metamoji/nt/NtNoteTemplateSettings;

    invoke-direct {p1}, Lcom/metamoji/nt/NtNoteTemplateSettings;-><init>()V

    .line 6282
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getTitleRule()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    .line 6283
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getHeader()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    .line 6284
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFooter()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    .line 6285
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getFrontCover()Z

    move-result p2

    iput-boolean p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    .line 6286
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getNoFrontCoverOnPrinting()Z

    move-result p2

    iput-boolean p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->noFrontCoverOnPrinting:Z

    .line 6287
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUseNoteSettingsForText()Z

    move-result p2

    iput-boolean p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    .line 6288
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    .line 6289
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getPasswordHash()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    .line 6290
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->isIncludeVoiceFile()Z

    move-result p2

    iput-boolean p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasRecordings:Z

    .line 6291
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$dlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/DocumentSettings2;->getShareTemplateDic()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->shareTemplateDic:Ljava/util/Map;

    .line 6292
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$driveId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$docId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$51;->val$orgSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    iget-object v1, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p1, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {p2, p3, v0, p1, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$mnewNoteTemplateBasedOnNote(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;Z)V

    :cond_3
    return-void
.end method
