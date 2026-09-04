.class Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;
.super Ljava/lang/Object;
.source "UnSoundUnitContainerExtender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleSoundUnitBar(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;

.field final synthetic val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;Lcom/metamoji/un/sound/UnSoundUnit;)V
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

    .line 326
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;->this$0:Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 329
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v2

    .line 332
    iget-object v3, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v3}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object v3

    .line 346
    iget-object v4, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz v3, :cond_2

    .line 334
    invoke-virtual {v4}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_5

    .line 335
    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v2, v3, :cond_5

    .line 339
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 341
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->setPauseWhenFocused(Z)V

    .line 342
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    return-void

    .line 337
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnit;->play(Z)V

    return-void

    .line 346
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result v3

    if-nez v3, :cond_5

    .line 347
    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 350
    :cond_3
    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v2, v3, :cond_5

    .line 351
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 353
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    return-void

    .line 349
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->record()V

    :cond_5
    return-void
.end method
