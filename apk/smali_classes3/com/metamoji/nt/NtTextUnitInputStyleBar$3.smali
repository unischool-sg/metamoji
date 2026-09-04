.class Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;
.super Ljava/lang/Object;
.source "NtTextUnitInputStyleBar.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextUnitInputStyleBar;->btnFontColor_Tapped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

.field final synthetic val$defColor:I

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtTextUnitInputStyleBar;Lcom/metamoji/ui/dialog/TextAndBackgroundColor;I)V
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

    .line 927
    iput-object p1, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    iput-object p2, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    iput p3, p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$defColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 17

    move-object/from16 v0, p0

    if-eqz p3, :cond_9

    .line 930
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->isToDefault()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getInkColors()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->isUseBackgroundColor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 931
    :cond_0
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_textColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/Integer;

    move-result-object v1

    .line 932
    iget-object v2, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_isTextColorDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result v2

    .line 937
    iget-object v3, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v3}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_textBackgroundColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/Integer;

    move-result-object v3

    .line 938
    iget-object v4, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v4}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_useTextBackgroundColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result v4

    .line 940
    iget-object v5, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v5}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->isToDefault()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v5}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->isToDefault()Z

    move-result v5

    iget-object v9, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v9}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_isTextColorDefault(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result v9

    if-eq v5, v9, :cond_1

    .line 941
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 942
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    iget v2, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$defColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextColor(Ljava/lang/Integer;Z)V

    .line 943
    iget v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$defColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v10, v1

    move v11, v6

    goto :goto_1

    .line 948
    :cond_1
    iget-object v5, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v5}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getInkColors()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v5}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getInkColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 949
    iget-object v5, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v5}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getInkColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    move-object v5, v7

    :goto_0
    if-eqz v5, :cond_3

    .line 950
    iget-object v9, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v9}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_textColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 951
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-virtual {v1, v5, v8}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextColor(Ljava/lang/Integer;Z)V

    move-object v10, v5

    move v11, v8

    goto :goto_1

    :cond_3
    move-object v10, v1

    move v11, v2

    .line 958
    :goto_1
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 959
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getInkType()Ljava/lang/String;

    move-result-object v7

    .line 960
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getInkId()Ljava/lang/String;

    move-result-object v1

    .line 961
    iget-object v2, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getInkColors()Ljava/util/List;

    move-result-object v2

    move-object v14, v1

    move-object v13, v2

    move-object v12, v7

    goto :goto_2

    :cond_4
    move-object v12, v7

    move-object v13, v12

    move-object v14, v13

    .line 964
    :goto_2
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->isUseBackgroundColor()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->isUseBackgroundColor()Z

    move-result v1

    iget-object v2, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_useTextBackgroundColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Z

    move-result v2

    if-eq v1, v2, :cond_5

    .line 965
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    const/16 v2, 0xff

    invoke-static {v8, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextBackgroundColor(Ljava/lang/Integer;Z)V

    .line 968
    invoke-static {v8, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v15, v3

    move/from16 v16, v8

    goto :goto_3

    .line 969
    :cond_5
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->isUseBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 970
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->val$dlg:Lcom/metamoji/ui/dialog/TextAndBackgroundColor;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 971
    iget-object v2, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_textBackgroundColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_textBackgroundColor(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 972
    :cond_6
    iget-object v2, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 973
    iget-object v2, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-virtual {v2, v1, v6}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setTextBackgroundColor(Ljava/lang/Integer;Z)V

    move-object v15, v1

    move/from16 v16, v6

    goto :goto_3

    :cond_7
    move-object v15, v3

    move/from16 v16, v4

    .line 980
    :goto_3
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_unitController(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_modifiedFlag(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 981
    :cond_8
    iget-object v1, v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$3;->this$0:Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    invoke-static {v1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->-$$Nest$fget_unitController(Lcom/metamoji/nt/NtTextUnitInputStyleBar;)Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v9

    invoke-virtual/range {v9 .. v16}, Lcom/metamoji/un/text/UnTextUnit;->changeAttrTextAndBackgroundColor(Ljava/lang/Integer;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Z)V

    :cond_9
    return-void
.end method
