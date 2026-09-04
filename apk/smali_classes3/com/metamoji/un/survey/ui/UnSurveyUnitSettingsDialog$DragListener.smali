.class Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;
.super Lcom/metamoji/ui/cabinet/SimpleDragListener;
.source "UnSurveyUnitSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/SimpleDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDrag(I)I
    .locals 0

    return p1
.end method

.method public onStopDrag(IIII)Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->getCount()I

    move-result v0

    if-gez p2, :cond_1

    if-gez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, v0, -0x1

    :cond_1
    :goto_0
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, v0, -0x1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

    .line 81
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iget-object v1, v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->remove(Ljava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iget-object v1, v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->insert(Ljava/lang/Object;I)V

    .line 83
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->notifyDataSetChanged()V

    .line 86
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    iget-object v0, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScListView;->invalidateViews()V

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/SimpleDragListener;->onStopDrag(IIII)Z

    move-result p1

    return p1
.end method
