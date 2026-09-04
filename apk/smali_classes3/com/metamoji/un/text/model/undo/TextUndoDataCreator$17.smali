.class Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$17;
.super Ljava/util/HashMap;
.source "TextUndoDataCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createUnitNoDropShadow(Z)Ljava/util/Map;
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
.field final synthetic val$param:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 2

    .line 635
    iput-object p1, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$17;->val$param:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 637
    const-string v0, "name"

    const-string/jumbo v1, "taskUnitNoDropShadow"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string v0, "param"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
