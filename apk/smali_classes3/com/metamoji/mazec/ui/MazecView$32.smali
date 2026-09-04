.class Lcom/metamoji/mazec/ui/MazecView$32;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initTabletOnlyUIParts(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1551
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$32;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/metamoji/mazec/ui/ToggleImageView;)V
    .locals 3

    .line 1553
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$32;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 1554
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ToggleImageView;->isChecked()Z

    move-result p1

    .line 1555
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 1556
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1558
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_higher_hw_panel"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1559
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    iput-boolean p1, v0, Lcom/metamoji/mazec/MazecPreferences;->isHigherHwPanel:Z

    .line 1560
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$32;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmHwPanel(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/HandwritingPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->changePanelHeight(Z)V

    return-void
.end method
