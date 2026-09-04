.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;
.super Ljava/util/HashMap;
.source "ScScoreListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->parseScoreList(Ljava/util/List;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

.field final synthetic val$colDicSetArray:Ljava/util/List;

.field final synthetic val$roomId:Ljava/lang/String;

.field final synthetic val$roomTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;->val$roomTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;->val$colDicSetArray:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;->val$roomId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "title"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "span"

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string p1, "roomId"

    invoke-virtual {p0, p1, p4}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
