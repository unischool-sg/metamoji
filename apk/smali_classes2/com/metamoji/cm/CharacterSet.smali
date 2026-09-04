.class public Lcom/metamoji/cm/CharacterSet;
.super Ljava/lang/Object;
.source "CharacterSet.java"


# static fields
.field private static _whitespaceAndNewlineCharSet:Lcom/metamoji/cm/CharacterSet;

.field private static kinsokuAtBeginCharacterSet:Lcom/metamoji/cm/CharacterSet;

.field private static kinsokuAtEndCharacterSet:Lcom/metamoji/cm/CharacterSet;

.field private static lineBreakCharacterSet:Lcom/metamoji/cm/CharacterSet;

.field private static newlineCharacterSet:Lcom/metamoji/cm/CharacterSet;

.field private static whitespaceCharacterSet:Lcom/metamoji/cm/CharacterSet;


# instance fields
.field private charSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private rangeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cm/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CharacterSet;->rangeList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/metamoji/cm/CharacterSet;-><init>()V

    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static kinsokuAtBeginCharacterSet()Lcom/metamoji/cm/CharacterSet;
    .locals 2

    .line 110
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->kinsokuAtBeginCharacterSet:Lcom/metamoji/cm/CharacterSet;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/metamoji/cm/CharacterSet;

    const-string v1, "\u3001\u3002\uff0c\uff0e\uff1f\uff01\uff09\u3015\uff3d\uff5d\u3009\u300b\u300d\u300f\u3011\u3001\u3002,.?!)]}\u300d\u309b\u309c"

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CharacterSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/cm/CharacterSet;->kinsokuAtBeginCharacterSet:Lcom/metamoji/cm/CharacterSet;

    .line 113
    :cond_0
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->kinsokuAtBeginCharacterSet:Lcom/metamoji/cm/CharacterSet;

    return-object v0
.end method

.method public static kinsokuAtEndCharacterSet()Lcom/metamoji/cm/CharacterSet;
    .locals 2

    .line 122
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->kinsokuAtEndCharacterSet:Lcom/metamoji/cm/CharacterSet;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/metamoji/cm/CharacterSet;

    const-string v1, "\uff08\u3014\uff3b\uff5b\u3008\u300a\u300c\u300e\u3010([{\u300c"

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CharacterSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/cm/CharacterSet;->kinsokuAtEndCharacterSet:Lcom/metamoji/cm/CharacterSet;

    .line 125
    :cond_0
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->kinsokuAtEndCharacterSet:Lcom/metamoji/cm/CharacterSet;

    return-object v0
.end method

.method public static lineBreakCharacterSet()Lcom/metamoji/cm/CharacterSet;
    .locals 5

    .line 90
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->lineBreakCharacterSet:Lcom/metamoji/cm/CharacterSet;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/metamoji/cm/CharacterSet;

    invoke-direct {v0}, Lcom/metamoji/cm/CharacterSet;-><init>()V

    .line 92
    sput-object v0, Lcom/metamoji/cm/CharacterSet;->lineBreakCharacterSet:Lcom/metamoji/cm/CharacterSet;

    .line 95
    iget-object v1, v0, Lcom/metamoji/cm/CharacterSet;->rangeList:Ljava/util/ArrayList;

    new-instance v2, Lcom/metamoji/cm/Range;

    const/16 v3, 0x1100

    const v4, 0xef00

    invoke-direct {v2, v3, v4}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->whitespaceCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CharacterSet;->formUnion(Lcom/metamoji/cm/CharacterSet;)V

    .line 99
    iget-object v0, v0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->lineBreakCharacterSet:Lcom/metamoji/cm/CharacterSet;

    return-object v0
.end method

.method public static newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;
    .locals 5

    .line 50
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet:Lcom/metamoji/cm/CharacterSet;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/metamoji/cm/CharacterSet;

    invoke-direct {v0}, Lcom/metamoji/cm/CharacterSet;-><init>()V

    .line 52
    iget-object v1, v0, Lcom/metamoji/cm/CharacterSet;->rangeList:Ljava/util/ArrayList;

    new-instance v2, Lcom/metamoji/cm/Range;

    const/16 v3, 0xa

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, v0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    const/16 v2, 0x85

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, v0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    const/16 v2, 0x2028

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, v0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    const/16 v2, 0x2029

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sput-object v0, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet:Lcom/metamoji/cm/CharacterSet;

    .line 59
    :cond_0
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet:Lcom/metamoji/cm/CharacterSet;

    return-object v0
.end method

.method public static whitespaceAndNewlineCharacterSet()Lcom/metamoji/cm/CharacterSet;
    .locals 2

    .line 74
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->_whitespaceAndNewlineCharSet:Lcom/metamoji/cm/CharacterSet;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/metamoji/cm/CharacterSet;

    invoke-direct {v0}, Lcom/metamoji/cm/CharacterSet;-><init>()V

    .line 76
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->whitespaceCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CharacterSet;->formUnion(Lcom/metamoji/cm/CharacterSet;)V

    .line 77
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CharacterSet;->formUnion(Lcom/metamoji/cm/CharacterSet;)V

    .line 78
    sput-object v0, Lcom/metamoji/cm/CharacterSet;->_whitespaceAndNewlineCharSet:Lcom/metamoji/cm/CharacterSet;

    .line 80
    :cond_0
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->_whitespaceAndNewlineCharSet:Lcom/metamoji/cm/CharacterSet;

    return-object v0
.end method

.method public static whitespaceCharacterSet()Lcom/metamoji/cm/CharacterSet;
    .locals 3

    .line 64
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->whitespaceCharacterSet:Lcom/metamoji/cm/CharacterSet;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/metamoji/cm/CharacterSet;

    invoke-direct {v0}, Lcom/metamoji/cm/CharacterSet;-><init>()V

    .line 66
    iget-object v1, v0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, v0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sput-object v0, Lcom/metamoji/cm/CharacterSet;->whitespaceCharacterSet:Lcom/metamoji/cm/CharacterSet;

    .line 70
    :cond_0
    sget-object v0, Lcom/metamoji/cm/CharacterSet;->whitespaceCharacterSet:Lcom/metamoji/cm/CharacterSet;

    return-object v0
.end method


# virtual methods
.method public characterIsMember(I)Z
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/metamoji/cm/CharacterSet;->rangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/Range;

    .line 33
    iget v2, v1, Lcom/metamoji/cm/Range;->location:I

    if-gt v2, p1, :cond_0

    iget v2, v1, Lcom/metamoji/cm/Range;->location:I

    iget v1, v1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v2, v1

    if-ge p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Character;

    int-to-char p1, p1

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public formUnion(Lcom/metamoji/cm/CharacterSet;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/metamoji/cm/CharacterSet;->rangeList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/metamoji/cm/CharacterSet;->rangeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    iget-object v0, p0, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    iget-object p1, p1, Lcom/metamoji/cm/CharacterSet;->charSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
