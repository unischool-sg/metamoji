.class Lcom/metamoji/ui/UiTinyPalletViewGroup$2;
.super Ljava/lang/Object;
.source "UiTinyPalletViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiTinyPalletViewGroup;->resume(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/UiTinyPalletViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 834
    iput-object p1, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$2;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$2;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    iget-boolean v0, v0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voicePallet:Z

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$2;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getVoiceAnchor()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ui/UiTinyPalletViewGroup;->m_voiceAnchor:Landroid/view/View;

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiTinyPalletViewGroup$2;->this$0:Lcom/metamoji/ui/UiTinyPalletViewGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->update2()V

    return-void
.end method
