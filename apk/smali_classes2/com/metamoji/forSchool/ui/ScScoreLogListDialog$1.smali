.class Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$1;
.super Ljava/lang/Object;
.source "ScScoreLogListDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->setData(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$1;->this$0:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;)I
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$1;->this$0:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;

    const-string v1, "updateTime"

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->sortDate(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 243
    check-cast p1, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;

    check-cast p2, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$1;->compare(Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;)I

    move-result p1

    return p1
.end method
