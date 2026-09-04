.class Lcom/metamoji/tle/TextLineExtractorManager$6;
.super Ljava/lang/Object;
.source "TextLineExtractorManager.java"

# interfaces
.implements Lcom/metamoji/ctold/CtTaggedObjectFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/tle/TextLineExtractorManager;->insertTextUnit(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/tle/TextLineExtractorManager;

.field final synthetic val$strokeIdsForParagraph:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/tle/TextLineExtractorManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3258
    iput-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$6;->this$0:Lcom/metamoji/tle/TextLineExtractorManager;

    iput-object p2, p0, Lcom/metamoji/tle/TextLineExtractorManager$6;->val$strokeIdsForParagraph:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 3264
    sget-object p2, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    if-ne p1, p2, :cond_0

    .line 3265
    invoke-static {p3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->idFromObjectId(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    .line 3266
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    .line 3269
    iget-object p2, p0, Lcom/metamoji/tle/TextLineExtractorManager$6;->val$strokeIdsForParagraph:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
