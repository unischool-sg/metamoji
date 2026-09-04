.class public final enum Lcom/metamoji/nt/NtLocale;
.super Ljava/lang/Enum;
.source "NtLocale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtLocale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtLocale;

.field public static final enum de:Lcom/metamoji/nt/NtLocale;

.field public static final enum en:Lcom/metamoji/nt/NtLocale;

.field public static final enum es:Lcom/metamoji/nt/NtLocale;

.field public static final enum fr:Lcom/metamoji/nt/NtLocale;

.field public static final enum it:Lcom/metamoji/nt/NtLocale;

.field public static final enum ja:Lcom/metamoji/nt/NtLocale;

.field public static final enum ko:Lcom/metamoji/nt/NtLocale;

.field public static final enum nl:Lcom/metamoji/nt/NtLocale;

.field public static final enum pl:Lcom/metamoji/nt/NtLocale;

.field public static final enum pt:Lcom/metamoji/nt/NtLocale;

.field public static final enum ru:Lcom/metamoji/nt/NtLocale;

.field public static final enum zhHans:Lcom/metamoji/nt/NtLocale;

.field public static final enum zhHant:Lcom/metamoji/nt/NtLocale;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtLocale;
    .locals 13

    .line 7
    sget-object v0, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    sget-object v1, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    sget-object v2, Lcom/metamoji/nt/NtLocale;->fr:Lcom/metamoji/nt/NtLocale;

    sget-object v3, Lcom/metamoji/nt/NtLocale;->de:Lcom/metamoji/nt/NtLocale;

    sget-object v4, Lcom/metamoji/nt/NtLocale;->it:Lcom/metamoji/nt/NtLocale;

    sget-object v5, Lcom/metamoji/nt/NtLocale;->zhHans:Lcom/metamoji/nt/NtLocale;

    sget-object v6, Lcom/metamoji/nt/NtLocale;->zhHant:Lcom/metamoji/nt/NtLocale;

    sget-object v7, Lcom/metamoji/nt/NtLocale;->ko:Lcom/metamoji/nt/NtLocale;

    sget-object v8, Lcom/metamoji/nt/NtLocale;->es:Lcom/metamoji/nt/NtLocale;

    sget-object v9, Lcom/metamoji/nt/NtLocale;->ru:Lcom/metamoji/nt/NtLocale;

    sget-object v10, Lcom/metamoji/nt/NtLocale;->pt:Lcom/metamoji/nt/NtLocale;

    sget-object v11, Lcom/metamoji/nt/NtLocale;->nl:Lcom/metamoji/nt/NtLocale;

    sget-object v12, Lcom/metamoji/nt/NtLocale;->pl:Lcom/metamoji/nt/NtLocale;

    filled-new-array/range {v0 .. v12}, [Lcom/metamoji/nt/NtLocale;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "ja"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    .line 9
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "en"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    .line 10
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "fr"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->fr:Lcom/metamoji/nt/NtLocale;

    .line 11
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "de"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->de:Lcom/metamoji/nt/NtLocale;

    .line 12
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "it"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->it:Lcom/metamoji/nt/NtLocale;

    .line 13
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string/jumbo v1, "zhHans"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->zhHans:Lcom/metamoji/nt/NtLocale;

    .line 14
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string/jumbo v1, "zhHant"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->zhHant:Lcom/metamoji/nt/NtLocale;

    .line 15
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "ko"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->ko:Lcom/metamoji/nt/NtLocale;

    .line 16
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "es"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->es:Lcom/metamoji/nt/NtLocale;

    .line 17
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string/jumbo v1, "ru"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->ru:Lcom/metamoji/nt/NtLocale;

    .line 18
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "pt"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->pt:Lcom/metamoji/nt/NtLocale;

    .line 19
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "nl"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->nl:Lcom/metamoji/nt/NtLocale;

    .line 20
    new-instance v0, Lcom/metamoji/nt/NtLocale;

    const-string v1, "pl"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtLocale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtLocale;->pl:Lcom/metamoji/nt/NtLocale;

    .line 7
    invoke-static {}, Lcom/metamoji/nt/NtLocale;->$values()[Lcom/metamoji/nt/NtLocale;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtLocale;->$VALUES:[Lcom/metamoji/nt/NtLocale;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtLocale;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    const-class v0, Lcom/metamoji/nt/NtLocale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtLocale;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtLocale;
    .locals 1

    .line 7
    sget-object v0, Lcom/metamoji/nt/NtLocale;->$VALUES:[Lcom/metamoji/nt/NtLocale;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtLocale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtLocale;

    return-object v0
.end method
