.class public final enum Lcom/metamoji/tle/ProcessingStatus;
.super Ljava/lang/Enum;
.source "ProcessingStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/tle/ProcessingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/tle/ProcessingStatus;

.field public static final enum FileOpen:Lcom/metamoji/tle/ProcessingStatus;

.field public static final enum IllegalArg:Lcom/metamoji/tle/ProcessingStatus;

.field public static final enum MemoryAlloc:Lcom/metamoji/tle/ProcessingStatus;

.field public static final enum NotAvailable:Lcom/metamoji/tle/ProcessingStatus;

.field public static final enum Other:Lcom/metamoji/tle/ProcessingStatus;

.field public static final enum Success:Lcom/metamoji/tle/ProcessingStatus;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/tle/ProcessingStatus;
    .locals 6

    .line 22
    sget-object v0, Lcom/metamoji/tle/ProcessingStatus;->Success:Lcom/metamoji/tle/ProcessingStatus;

    sget-object v1, Lcom/metamoji/tle/ProcessingStatus;->NotAvailable:Lcom/metamoji/tle/ProcessingStatus;

    sget-object v2, Lcom/metamoji/tle/ProcessingStatus;->MemoryAlloc:Lcom/metamoji/tle/ProcessingStatus;

    sget-object v3, Lcom/metamoji/tle/ProcessingStatus;->FileOpen:Lcom/metamoji/tle/ProcessingStatus;

    sget-object v4, Lcom/metamoji/tle/ProcessingStatus;->IllegalArg:Lcom/metamoji/tle/ProcessingStatus;

    sget-object v5, Lcom/metamoji/tle/ProcessingStatus;->Other:Lcom/metamoji/tle/ProcessingStatus;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/tle/ProcessingStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/metamoji/tle/ProcessingStatus;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/ProcessingStatus;->Success:Lcom/metamoji/tle/ProcessingStatus;

    .line 24
    new-instance v0, Lcom/metamoji/tle/ProcessingStatus;

    const-string v1, "NotAvailable"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/ProcessingStatus;->NotAvailable:Lcom/metamoji/tle/ProcessingStatus;

    .line 25
    new-instance v0, Lcom/metamoji/tle/ProcessingStatus;

    const-string v1, "MemoryAlloc"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/ProcessingStatus;->MemoryAlloc:Lcom/metamoji/tle/ProcessingStatus;

    .line 26
    new-instance v0, Lcom/metamoji/tle/ProcessingStatus;

    const-string v1, "FileOpen"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/ProcessingStatus;->FileOpen:Lcom/metamoji/tle/ProcessingStatus;

    .line 27
    new-instance v0, Lcom/metamoji/tle/ProcessingStatus;

    const-string v1, "IllegalArg"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/ProcessingStatus;->IllegalArg:Lcom/metamoji/tle/ProcessingStatus;

    .line 28
    new-instance v0, Lcom/metamoji/tle/ProcessingStatus;

    const-string v1, "Other"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/ProcessingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/tle/ProcessingStatus;->Other:Lcom/metamoji/tle/ProcessingStatus;

    .line 22
    invoke-static {}, Lcom/metamoji/tle/ProcessingStatus;->$values()[Lcom/metamoji/tle/ProcessingStatus;

    move-result-object v0

    sput-object v0, Lcom/metamoji/tle/ProcessingStatus;->$VALUES:[Lcom/metamoji/tle/ProcessingStatus;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/metamoji/tle/ProcessingStatus;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 44
    sget-object p0, Lcom/metamoji/tle/ProcessingStatus;->Other:Lcom/metamoji/tle/ProcessingStatus;

    return-object p0

    .line 41
    :cond_0
    sget-object p0, Lcom/metamoji/tle/ProcessingStatus;->IllegalArg:Lcom/metamoji/tle/ProcessingStatus;

    return-object p0

    .line 39
    :cond_1
    sget-object p0, Lcom/metamoji/tle/ProcessingStatus;->FileOpen:Lcom/metamoji/tle/ProcessingStatus;

    return-object p0

    .line 37
    :cond_2
    sget-object p0, Lcom/metamoji/tle/ProcessingStatus;->MemoryAlloc:Lcom/metamoji/tle/ProcessingStatus;

    return-object p0

    .line 35
    :cond_3
    sget-object p0, Lcom/metamoji/tle/ProcessingStatus;->NotAvailable:Lcom/metamoji/tle/ProcessingStatus;

    return-object p0

    .line 33
    :cond_4
    sget-object p0, Lcom/metamoji/tle/ProcessingStatus;->Success:Lcom/metamoji/tle/ProcessingStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/tle/ProcessingStatus;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    const-class v0, Lcom/metamoji/tle/ProcessingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/tle/ProcessingStatus;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/tle/ProcessingStatus;
    .locals 1

    .line 22
    sget-object v0, Lcom/metamoji/tle/ProcessingStatus;->$VALUES:[Lcom/metamoji/tle/ProcessingStatus;

    invoke-virtual {v0}, [Lcom/metamoji/tle/ProcessingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/tle/ProcessingStatus;

    return-object v0
.end method
