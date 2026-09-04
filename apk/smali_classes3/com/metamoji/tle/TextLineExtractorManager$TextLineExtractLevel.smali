.class public final enum Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;
.super Ljava/lang/Enum;
.source "TextLineExtractorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/tle/TextLineExtractorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextLineExtractLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

.field public static final enum ExtractLevel_High:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

.field public static final enum ExtractLevel_Low:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

.field public static final enum ExtractLevel_Normal:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;
    .locals 3

    .line 195
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Low:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    sget-object v1, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Normal:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_High:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 196
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    const-string v1, "ExtractLevel_Low"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Low:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    .line 197
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    const-string v1, "ExtractLevel_Normal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Normal:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    .line 198
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    const-string v1, "ExtractLevel_High"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_High:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    .line 195
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->$values()[Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    move-result-object v0

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->$VALUES:[Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 195
    const-class v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;
    .locals 1

    .line 195
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->$VALUES:[Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    invoke-virtual {v0}, [Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    return-object v0
.end method
