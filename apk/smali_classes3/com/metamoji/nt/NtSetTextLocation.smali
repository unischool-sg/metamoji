.class public Lcom/metamoji/nt/NtSetTextLocation;
.super Landroidx/fragment/app/Fragment;
.source "NtSetTextLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;
    }
.end annotation


# static fields
.field private static final TEXTUNITLOCATIONVIEW_AUTOCLOSEINTERVAL:J = 0x9c4L

.field private static final TEXTUNITLOCATIONVIEW_AUTOCLOSE_FADEOUT_INTERVAL:J = 0x320L


# instance fields
.field private _timerAutoClose:Ljava/util/Timer;

.field private m_focusManager:Lcom/metamoji/nt/NtFocusManager;

.field private m_gesture:Landroid/view/GestureDetector;

.field private m_listener:Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;

.field private m_note:Lcom/metamoji/nt/NtNoteController;

.field private m_noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field private m_showLocation:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetm_focusManager(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtFocusManager;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_focusManager:Lcom/metamoji/nt/NtFocusManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_gesture(Lcom/metamoji/nt/NtSetTextLocation;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_gesture:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_listener(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_listener:Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_note(Lcom/metamoji/nt/NtSetTextLocation;)Lcom/metamoji/nt/NtNoteController;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_note:Lcom/metamoji/nt/NtNoteController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mautoClose(Lcom/metamoji/nt/NtSetTextLocation;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtSetTextLocation;->autoClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclose(Lcom/metamoji/nt/NtSetTextLocation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSetTextLocation;->close(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misHitTextUnit(Lcom/metamoji/nt/NtSetTextLocation;Landroid/graphics/PointF;)Lcom/metamoji/nt/NtUnitController;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSetTextLocation;->isHitTextUnit(Landroid/graphics/PointF;)Lcom/metamoji/nt/NtUnitController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monTimerAutoClose(Lcom/metamoji/nt/NtSetTextLocation;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtSetTextLocation;->onTimerAutoClose()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->_timerAutoClose:Ljava/util/Timer;

    .line 63
    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_listener:Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;

    .line 64
    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_gesture:Landroid/view/GestureDetector;

    .line 65
    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_note:Lcom/metamoji/nt/NtNoteController;

    .line 66
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_showLocation:Z

    .line 69
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtSetTextLocation;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtSetTextLocation$1;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtSetTextLocation$1;-><init>(Lcom/metamoji/nt/NtSetTextLocation;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_gesture:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method

.method private autoClose()V
    .locals 3

    .line 315
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 319
    new-instance v1, Lcom/metamoji/nt/NtSetTextLocation$5;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtSetTextLocation$5;-><init>(Lcom/metamoji/nt/NtSetTextLocation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 337
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSetTextLocation;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private close(Z)V
    .locals 4

    .line 144
    iget-boolean v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_showLocation:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_showLocation:Z

    .line 149
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 150
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iget-object v1, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_3

    .line 154
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_1

    .line 155
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 158
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 161
    sget-object v2, Lcom/metamoji/nt/NtSetTextLocation$6;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_TEXT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_SELECT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 178
    :pswitch_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_ERASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 173
    :pswitch_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_PEN:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 168
    :pswitch_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_LASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 163
    :pswitch_5
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_VIEW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    :goto_0
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 203
    :cond_2
    new-instance v2, Lcom/metamoji/cm/CmContext;

    invoke-direct {v2}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 204
    const-string v3, "index"

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_listener:Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;

    if-eqz v0, :cond_4

    .line 209
    invoke-interface {v0, p1}, Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;->tapped(Z)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isEnableSetLocationUI()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isHitTextUnit(Landroid/graphics/PointF;)Lcom/metamoji/nt/NtUnitController;
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_note:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 346
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtUnitController;->unitHitTest(Landroid/graphics/PointF;)Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 348
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "$text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private onTimerAutoClose()V
    .locals 2

    .line 304
    invoke-direct {p0}, Lcom/metamoji/nt/NtSetTextLocation;->stopAutoCloseTimer()V

    .line 306
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtSetTextLocation$4;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtSetTextLocation$4;-><init>(Lcom/metamoji/nt/NtSetTextLocation;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startAutoCloseTimer()V
    .locals 4

    .line 279
    invoke-direct {p0}, Lcom/metamoji/nt/NtSetTextLocation;->stopAutoCloseTimer()V

    .line 281
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSetTextLocation;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 284
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->_timerAutoClose:Ljava/util/Timer;

    .line 285
    new-instance v1, Lcom/metamoji/nt/NtSetTextLocation$3;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtSetTextLocation$3;-><init>(Lcom/metamoji/nt/NtSetTextLocation;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private stopAutoCloseTimer()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->_timerAutoClose:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->_timerAutoClose:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 275
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtSetTextLocation;->close(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 230
    sget p3, Lcom/metamoji/noteanytime/R$layout;->nt_set_textunit_location:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 267
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_focusManager:Lcom/metamoji/nt/NtFocusManager;

    .line 269
    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_note:Lcom/metamoji/nt/NtNoteController;

    .line 270
    iput-object v0, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_gesture:Landroid/view/GestureDetector;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSetTextLocation;->getView()Landroid/view/View;

    move-result-object v0

    .line 238
    invoke-static {}, Lcom/metamoji/nt/NtSetTextLocation;->isEnableSetLocationUI()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 240
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 242
    :cond_0
    new-instance p1, Lcom/metamoji/nt/NtSetTextLocation$2;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtSetTextLocation$2;-><init>(Lcom/metamoji/nt/NtSetTextLocation;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 253
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSetTextLocation;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSetTextLocation;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 256
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/nt/NtSetTextLocation;->stopAutoCloseTimer()V

    return-void

    .line 259
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/nt/NtSetTextLocation;->startAutoCloseTimer()V

    return-void
.end method

.method public setTextLocationListener(Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_listener:Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;

    return-void
.end method

.method public show(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtFocusManager;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_note:Lcom/metamoji/nt/NtNoteController;

    .line 216
    iput-object p2, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_focusManager:Lcom/metamoji/nt/NtFocusManager;

    const/4 p2, 0x1

    .line 217
    iput-boolean p2, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_showLocation:Z

    if-nez p1, :cond_0

    .line 219
    sget-object p1, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtSetTextLocation;->m_noteMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSetTextLocation;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method
