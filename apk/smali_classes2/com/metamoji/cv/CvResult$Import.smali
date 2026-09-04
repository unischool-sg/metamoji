.class public final enum Lcom/metamoji/cv/CvResult$Import;
.super Ljava/lang/Enum;
.source "CvResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cv/CvResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Import"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/cv/CvResult$Import;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailChecksum:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailCloseZip:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailConvert:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailConvertBusy:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailCreateTempDir:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailEdition:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailForInvalidArgument:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailForUnknownError:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailLoadFile:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailOpenZip:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailPassword:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum FailReadZip:Lcom/metamoji/cv/CvResult$Import;

.field public static final enum Success:Lcom/metamoji/cv/CvResult$Import;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/cv/CvResult$Import;
    .locals 13

    .line 23
    sget-object v0, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    sget-object v1, Lcom/metamoji/cv/CvResult$Import;->FailForUnknownError:Lcom/metamoji/cv/CvResult$Import;

    sget-object v2, Lcom/metamoji/cv/CvResult$Import;->FailForInvalidArgument:Lcom/metamoji/cv/CvResult$Import;

    sget-object v3, Lcom/metamoji/cv/CvResult$Import;->FailOpenZip:Lcom/metamoji/cv/CvResult$Import;

    sget-object v4, Lcom/metamoji/cv/CvResult$Import;->FailReadZip:Lcom/metamoji/cv/CvResult$Import;

    sget-object v5, Lcom/metamoji/cv/CvResult$Import;->FailCloseZip:Lcom/metamoji/cv/CvResult$Import;

    sget-object v6, Lcom/metamoji/cv/CvResult$Import;->FailChecksum:Lcom/metamoji/cv/CvResult$Import;

    sget-object v7, Lcom/metamoji/cv/CvResult$Import;->FailLoadFile:Lcom/metamoji/cv/CvResult$Import;

    sget-object v8, Lcom/metamoji/cv/CvResult$Import;->FailCreateTempDir:Lcom/metamoji/cv/CvResult$Import;

    sget-object v9, Lcom/metamoji/cv/CvResult$Import;->FailConvertBusy:Lcom/metamoji/cv/CvResult$Import;

    sget-object v10, Lcom/metamoji/cv/CvResult$Import;->FailConvert:Lcom/metamoji/cv/CvResult$Import;

    sget-object v11, Lcom/metamoji/cv/CvResult$Import;->FailPassword:Lcom/metamoji/cv/CvResult$Import;

    sget-object v12, Lcom/metamoji/cv/CvResult$Import;->FailEdition:Lcom/metamoji/cv/CvResult$Import;

    filled-new-array/range {v0 .. v12}, [Lcom/metamoji/cv/CvResult$Import;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    .line 25
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailForUnknownError"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailForUnknownError:Lcom/metamoji/cv/CvResult$Import;

    .line 26
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailForInvalidArgument"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailForInvalidArgument:Lcom/metamoji/cv/CvResult$Import;

    .line 27
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailOpenZip"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailOpenZip:Lcom/metamoji/cv/CvResult$Import;

    .line 28
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailReadZip"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailReadZip:Lcom/metamoji/cv/CvResult$Import;

    .line 29
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailCloseZip"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailCloseZip:Lcom/metamoji/cv/CvResult$Import;

    .line 30
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailChecksum"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailChecksum:Lcom/metamoji/cv/CvResult$Import;

    .line 31
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailLoadFile"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailLoadFile:Lcom/metamoji/cv/CvResult$Import;

    .line 32
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailCreateTempDir"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailCreateTempDir:Lcom/metamoji/cv/CvResult$Import;

    .line 33
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailConvertBusy"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailConvertBusy:Lcom/metamoji/cv/CvResult$Import;

    .line 34
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailConvert"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailConvert:Lcom/metamoji/cv/CvResult$Import;

    .line 35
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailPassword"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailPassword:Lcom/metamoji/cv/CvResult$Import;

    .line 36
    new-instance v0, Lcom/metamoji/cv/CvResult$Import;

    const-string v1, "FailEdition"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/CvResult$Import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->FailEdition:Lcom/metamoji/cv/CvResult$Import;

    .line 23
    invoke-static {}, Lcom/metamoji/cv/CvResult$Import;->$values()[Lcom/metamoji/cv/CvResult$Import;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cv/CvResult$Import;->$VALUES:[Lcom/metamoji/cv/CvResult$Import;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/cv/CvResult$Import;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    const-class v0, Lcom/metamoji/cv/CvResult$Import;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cv/CvResult$Import;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/cv/CvResult$Import;
    .locals 1

    .line 23
    sget-object v0, Lcom/metamoji/cv/CvResult$Import;->$VALUES:[Lcom/metamoji/cv/CvResult$Import;

    invoke-virtual {v0}, [Lcom/metamoji/cv/CvResult$Import;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/cv/CvResult$Import;

    return-object v0
.end method
