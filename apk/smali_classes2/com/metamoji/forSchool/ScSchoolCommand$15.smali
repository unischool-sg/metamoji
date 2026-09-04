.class Lcom/metamoji/forSchool/ScSchoolCommand$15;
.super Ljava/lang/Object;
.source "ScSchoolCommand.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolAttentionStart(ZZLjava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

.field final synthetic val$cmd:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$defaults:Lcom/metamoji/nt/NtUserDefaults;

.field final synthetic val$finalEditorViewController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtUserDefaults;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2002
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$finalEditorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$cmd:Lcom/metamoji/nt/NtCommand;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$defaults:Lcom/metamoji/nt/NtUserDefaults;

    iput-object p4, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2007
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$finalEditorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_0

    .line 2008
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$cmd:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 2011
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 2012
    const-string v0, "userId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2013
    const-string v1, "nickname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2014
    new-instance v1, Lcom/metamoji/forSchool/ScSchoolCommand$15$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/metamoji/forSchool/ScSchoolCommand$15$1;-><init>(Lcom/metamoji/forSchool/ScSchoolCommand$15;Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$defaults:Lcom/metamoji/nt/NtUserDefaults;

    const-string v0, "forSchoolAttentionUserInfoDic"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    .line 2019
    const-string p1, "forSchoolAttentionSelectedGroupId"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2022
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$defaults:Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2020
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$defaults:Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 2025
    :goto_1
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void

    .line 2031
    :cond_3
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void
.end method
