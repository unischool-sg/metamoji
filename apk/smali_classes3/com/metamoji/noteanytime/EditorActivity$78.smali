.class Lcom/metamoji/noteanytime/EditorActivity$78;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->onFeatureConditionChanged(Lcom/metamoji/nt/NtFeatureManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8386
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$78;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8389
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$78;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8391
    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->resetButtonStyle()V

    .line 8393
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$78;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8395
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$78;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->onFeatureConditionChanged(Landroidx/fragment/app/FragmentActivity;)V

    :cond_1
    return-void
.end method
