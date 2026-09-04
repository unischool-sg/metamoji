.class final enum Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;
.super Ljava/lang/Enum;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

.field public static final enum AFTER_AMPERSAND:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

.field public static final enum AFTER_HASH:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

.field public static final enum IN_DIGITS:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

.field public static final enum NONE:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;
    .locals 4

    .line 61
    sget-object v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->NONE:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    sget-object v1, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->AFTER_AMPERSAND:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    sget-object v2, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->AFTER_HASH:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    sget-object v3, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->IN_DIGITS:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->NONE:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    .line 63
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    const-string v1, "AFTER_AMPERSAND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->AFTER_AMPERSAND:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    .line 64
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    const-string v1, "AFTER_HASH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->AFTER_HASH:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    .line 65
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    const-string v1, "IN_DIGITS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->IN_DIGITS:Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    .line 61
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->$values()[Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->$VALUES:[Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

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

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    const-class v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;
    .locals 1

    .line 61
    sget-object v0, Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->$VALUES:[Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    invoke-virtual {v0}, [Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/cv/xml/XmlUtils$SurrogateCharRefOutputStream$State;

    return-object v0
.end method
