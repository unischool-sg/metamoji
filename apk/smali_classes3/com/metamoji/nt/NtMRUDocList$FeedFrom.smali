.class public final enum Lcom/metamoji/nt/NtMRUDocList$FeedFrom;
.super Ljava/lang/Enum;
.source "NtMRUDocList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtMRUDocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeedFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtMRUDocList$FeedFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

.field public static final enum KEEP_CURRENT:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

.field public static final enum LOCAL:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

.field public static final enum SDRIVE:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtMRUDocList$FeedFrom;
    .locals 3

    .line 726
    sget-object v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->LOCAL:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    sget-object v1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->SDRIVE:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    sget-object v2, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->KEEP_CURRENT:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 727
    new-instance v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->LOCAL:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    .line 728
    new-instance v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    const-string v1, "SDRIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->SDRIVE:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    .line 729
    new-instance v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    const-string v1, "KEEP_CURRENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->KEEP_CURRENT:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    .line 726
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->$values()[Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->$VALUES:[Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

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

    .line 726
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtMRUDocList$FeedFrom;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 726
    const-class v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtMRUDocList$FeedFrom;
    .locals 1

    .line 726
    sget-object v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->$VALUES:[Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    return-object v0
.end method
