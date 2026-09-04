.class Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;
.super Ljava/lang/Object;
.source "SelectBulletedListNumberedKind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberedListKindAndString"
.end annotation


# instance fields
.field public _numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

.field public _prefixStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;[Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;->_numberedListKind:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 58
    iput-object p2, p0, Lcom/metamoji/ui/dialog/SelectBulletedListNumberedKind$NumberedListKindAndString;->_prefixStrings:[Ljava/lang/String;

    return-void
.end method
