.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$9;
.super Ljava/util/HashMap;
.source "ScScoreListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->setupRecord(Ljava/util/List;Ljava/util/Map;)V
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

.field final synthetic val$updator:Ljava/lang/String;

.field final synthetic val$updatorName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    .line 347
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$9;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$9;->val$updator:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$9;->val$updatorName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const-string v0, "updator"

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p1

    .line 348
    :goto_1
    const-string p1, "updatorName"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
