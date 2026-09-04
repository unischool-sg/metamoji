.class public final enum Lcom/metamoji/cv/CvResult$Export;
.super Ljava/lang/Enum;
.source "CvResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cv/CvResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Export"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/cv/CvResult$Export;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailCloseZip:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailConvert:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailConvertBusy:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailCreateTempDir:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailCreateZip:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailEncrypt:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailForInvalidArgument:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailForUnknownError:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailLoadStateDataFile:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailPassword:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum FailWriteZip:Lcom/metamoji/cv/CvResult$Export;

.field public static final enum Success:Lcom/metamoji/cv/CvResult$Export;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/cv/CvResult$Export;
    .locals 12

    .line 8
    sget-object v0, Lcom/metamoji/cv/CvResult$Export;->Success:Lcom/metamoji/cv/CvResult$Export;

    sget-object v1, Lcom/metamoji/cv/CvResult$Export;->FailForUnknownError:Lcom/metamoji/cv/CvResult$Export;

    sget-object v2, Lcom/metamoji/cv/CvResult$Export;->FailForInvalidArgument:Lcom/metamoji/cv/CvResult$Export;

    sget-object v3, Lcom/metamoji/cv/CvResult$Export;->FailCreateZip:Lcom/metamoji/cv/CvResult$Export;

    sget-object v4, Lcom/metamoji/cv/CvResult$Export;->FailWriteZip:Lcom/metamoji/cv/CvResult$Export;

    sget-object v5, Lcom/metamoji/cv/CvResult$Export;->FailCloseZip:Lcom/metamoji/cv/CvResult$Export;

    sget-object v6, Lcom/metamoji/cv/CvResult$Export;->FailEncrypt:Lcom/metamoji/cv/CvResult$Export;

    sget-object v7, Lcom/metamoji/cv/CvResult$Export;->FailLoadStateDataFile:Lcom/metamoji/cv/CvResult$Export;

    sget-object v8, Lcom/metamoji/cv/CvResult$Export;->FailCreateTempDir:Lcom/metamoji/cv/CvResult$Export;

    sget-object v9, Lcom/metamoji/cv/CvResult$Export;->FailConvertBusy:Lcom/metamoji/cv/CvResult$Export;

    sget-object v10, Lcom/metamoji/cv/CvResult$Export;->FailConvert:Lcom/metamoji/cv/CvResult$Export;

    sget-object v11, Lcom/metamoji/cv/CvResult$Export;->FailPassword:Lcom/metamoji/cv/CvResult$Export;

    filled-new-array/range {v0 .. v11}, [Lcom/metamoji/cv/CvResult$Export;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->Success:Lcom/metamoji/cv/CvResult$Export;

    .line 10
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailForUnknownError"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailForUnknownError:Lcom/metamoji/cv/CvResult$Export;

    .line 11
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailForInvalidArgument"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailForInvalidArgument:Lcom/metamoji/cv/CvResult$Export;

    .line 12
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailCreateZip"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailCreateZip:Lcom/metamoji/cv/CvResult$Export;

    .line 13
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailWriteZip"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailWriteZip:Lcom/metamoji/cv/CvResult$Export;

    .line 14
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailCloseZip"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailCloseZip:Lcom/metamoji/cv/CvResult$Export;

    .line 15
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailEncrypt"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailEncrypt:Lcom/metamoji/cv/CvResult$Export;

    .line 16
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailLoadStateDataFile"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailLoadStateDataFile:Lcom/metamoji/cv/CvResult$Export;

    .line 17
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailCreateTempDir"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailCreateTempDir:Lcom/metamoji/cv/CvResult$Export;

    .line 18
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailConvertBusy"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailConvertBusy:Lcom/metamoji/cv/CvResult$Export;

    .line 19
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailConvert"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailConvert:Lcom/metamoji/cv/CvResult$Export;

    .line 20
    new-instance v0, Lcom/metamoji/cv/CvResult$Export;

    const-string v1, "FailPassword"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Export;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->FailPassword:Lcom/metamoji/cv/CvResult$Export;

    .line 8
    invoke-static {}, Lcom/metamoji/cv/CvResult$Export;->$values()[Lcom/metamoji/cv/CvResult$Export;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cv/CvResult$Export;->$VALUES:[Lcom/metamoji/cv/CvResult$Export;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/cv/CvResult$Export;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 8
    const-class v0, Lcom/metamoji/cv/CvResult$Export;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cv/CvResult$Export;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/cv/CvResult$Export;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/cv/CvResult$Export;->$VALUES:[Lcom/metamoji/cv/CvResult$Export;

    invoke-virtual {v0}, [Lcom/metamoji/cv/CvResult$Export;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/cv/CvResult$Export;

    return-object v0
.end method
