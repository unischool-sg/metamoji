.class Lcom/metamoji/ui/dialog/SystemOption$18;
.super Ljava/lang/Object;
.source "SystemOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/SystemOption;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/SystemOption;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/SystemOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SystemOption$18;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 527
    new-instance p1, Lcom/metamoji/ui/dialog/TextSettings;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/TextSettings;-><init>()V

    .line 536
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SystemOption$18;->this$0:Lcom/metamoji/ui/dialog/SystemOption;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SystemOption;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SystemOption_TextModeSettings"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/TextSettings;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
