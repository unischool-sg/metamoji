.class Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;
.super Ljava/lang/Object;
.source "TextLineExtractorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/tle/TextLineExtractorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextUnitSeed"
.end annotation


# instance fields
.field public removeStrokeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public textUnitModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/tle/TextLineExtractorManager;


# direct methods
.method private constructor <init>(Lcom/metamoji/tle/TextLineExtractorManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;->this$0:Lcom/metamoji/tle/TextLineExtractorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineExtractorManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;)V

    return-void
.end method
