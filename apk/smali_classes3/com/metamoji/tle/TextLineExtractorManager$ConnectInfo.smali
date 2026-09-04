.class Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;
.super Ljava/lang/Object;
.source "TextLineExtractorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/tle/TextLineExtractorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectInfo"
.end annotation


# instance fields
.field public connectType:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

.field public rotateInfo:Lcom/metamoji/tle/TextLineRotateInfo;

.field final synthetic this$0:Lcom/metamoji/tle/TextLineExtractorManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineRotateInfo;Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;->this$0:Lcom/metamoji/tle/TextLineExtractorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;->rotateInfo:Lcom/metamoji/tle/TextLineRotateInfo;

    .line 294
    iput-object p3, p0, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;->connectType:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    return-void
.end method
