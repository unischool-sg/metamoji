.class Lcom/metamoji/ui/UiTinyPalletViewGroup$1;
.super Ljava/lang/Object;
.source "UiTinyPalletViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiTinyPalletViewGroup;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/UiTinyPalletViewGroup;Lcom/metamoji/nt/NtCommand;I)V
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

    .line 750
    iput-object p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iput-object p2, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->val$command:Lcom/metamoji/nt/NtCommand;

    iput p3, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->val$selected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 754
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->val$command:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    sget-object v0, Lcom/metamoji/ui/UiTinyPalletViewGroup$3;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    iget-object v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->val$command:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 789
    :pswitch_0
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateShapePenModeButton()V

    return-void

    .line 784
    :pswitch_1
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateDetailView()V

    return-void

    .line 778
    :pswitch_2
    invoke-static {}, Lcom/metamoji/ui/HoverCm;->hasSubAtView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget-object v0, v0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_currentMode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_1

    .line 779
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateDetailView()V

    return-void

    .line 773
    :pswitch_3
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->val$selected:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updatePenImage(I)V

    .line 775
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateShapePenModeButton()V

    return-void

    .line 769
    :pswitch_4
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->val$selected:I

    iput v1, v0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_indexSub:I

    .line 770
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateStatus()V

    return-void

    .line 765
    :pswitch_5
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->val$selected:I

    iput v1, v0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_indexSub:I

    .line 766
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateStatus()V

    return-void

    .line 759
    :pswitch_6
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget v1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->val$selected:I

    iput v1, v0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_indexSub:I

    .line 760
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateStatus()V

    .line 762
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$1;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateShapePenModeButton()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
