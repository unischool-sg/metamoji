.class public Lcom/metamoji/ce/io/CeCsvComposer;
.super Ljava/lang/Object;
.source "CeCsvComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;
    }
.end annotation


# instance fields
.field private _charactersShouleBeEnclosed:Lcom/metamoji/cm/CharacterSet;

.field private _columnSeparator:C

.field private _firstColumn:Z

.field private _handler:Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;

.field private _lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_handler:Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;

    .line 29
    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_lineSeparator:Ljava/lang/String;

    const/16 v0, 0x2c

    .line 30
    iput-char v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_columnSeparator:C

    return-void
.end method


# virtual methods
.method public cell(Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_firstColumn:Z

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_handler:Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;

    iget-char v1, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_columnSeparator:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;->write(Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_charactersShouleBeEnclosed:Lcom/metamoji/cm/CharacterSet;

    invoke-static {p1, v0}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)I

    move-result v0

    if-lez v0, :cond_1

    .line 42
    const-string v0, "\""

    const-string v1, "\"\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_handler:Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;

    const-string v1, "\"%s\""

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_handler:Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;

    invoke-interface {v0, p1}, Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;->write(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_firstColumn:Z

    return-void
.end method

.method public endRow()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_handler:Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;

    iget-object v1, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_lineSeparator:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;->write(Ljava/lang/String;)V

    return-void
.end method

.method public getColumnSeparator()C
    .locals 1

    .line 18
    iget-char v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_columnSeparator:C

    return v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public setColumnSeparator(C)V
    .locals 2

    .line 20
    iput-char p1, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_columnSeparator:C

    .line 21
    new-instance v0, Lcom/metamoji/cm/CharacterSet;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "\r\n\"%c"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/cm/CharacterSet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_charactersShouleBeEnclosed:Lcom/metamoji/cm/CharacterSet;

    return-void
.end method

.method public setHandler(Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_handler:Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public startRow()V
    .locals 1

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/metamoji/ce/io/CeCsvComposer;->_firstColumn:Z

    return-void
.end method
