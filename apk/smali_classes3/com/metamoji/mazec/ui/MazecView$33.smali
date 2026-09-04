.class Lcom/metamoji/mazec/ui/MazecView$33;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;


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

    .line 1571
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$33;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispChange(Z)V
    .locals 3

    .line 1580
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$33;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 1581
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 1582
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1583
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 1584
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_disp_filter_list"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1585
    iput-boolean p1, v0, Lcom/metamoji/mazec/MazecPreferences;->dispFilterList:Z

    if-eqz p1, :cond_1

    .line 1588
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$33;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmSelectColorView(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/SelectColorView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1589
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$33;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmSelectColorView(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/SelectColorView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/SelectColorView;->setDispSelected()V

    .line 1591
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$33;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmSelectWidthView(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/SelectWidthView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1592
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$33;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmSelectWidthView(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/SelectWidthView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/SelectWidthView;->setDispSelected()V

    :cond_1
    return-void
.end method

.method public onSelect(I)V
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$33;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 1575
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecIms;->setRecognizeFilter(I)V

    return-void
.end method
