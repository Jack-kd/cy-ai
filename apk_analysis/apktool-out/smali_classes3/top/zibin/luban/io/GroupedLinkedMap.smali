.class Ltop/zibin/luban/io/GroupedLinkedMap;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ltop/zibin/luban/io/PoolAble;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final keyToEntry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    invoke-direct {v0}, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    return-void
.end method

.method private makeHead(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 89
    invoke-static {p1}, Ltop/zibin/luban/io/GroupedLinkedMap;->removeEntry(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V

    .line 90
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p1, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    .line 91
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iget-object v0, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p1, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    .line 92
    invoke-static {p1}, Ltop/zibin/luban/io/GroupedLinkedMap;->updateEntry(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V

    return-void
.end method

.method private makeTail(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Ltop/zibin/luban/io/GroupedLinkedMap;->removeEntry(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V

    .line 98
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iget-object v0, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p1, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    .line 99
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p1, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    .line 100
    invoke-static {p1}, Ltop/zibin/luban/io/GroupedLinkedMap;->updateEntry(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V

    return-void
.end method

.method private static removeEntry(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iget-object v1, p0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iput-object v1, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    .line 110
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iget-object p0, p0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iput-object p0, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    return-void
.end method

.method private static updateEntry(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iput-object p0, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    .line 105
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iput-object p0, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    return-void
.end method


# virtual methods
.method public get(Ltop/zibin/luban/io/PoolAble;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    invoke-direct {v0, p1}, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    .line 35
    iget-object v1, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {p1}, Ltop/zibin/luban/io/PoolAble;->offer()V

    .line 40
    :goto_0
    invoke-direct {p0, v0}, Ltop/zibin/luban/io/GroupedLinkedMap;->makeHead(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V

    .line 42
    invoke-virtual {v0}, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ltop/zibin/luban/io/PoolAble;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    invoke-direct {v0, p1}, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    .line 22
    invoke-direct {p0, v0}, Ltop/zibin/luban/io/GroupedLinkedMap;->makeTail(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V

    .line 23
    iget-object v1, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p1}, Ltop/zibin/luban/io/PoolAble;->offer()V

    .line 28
    :goto_0
    invoke-virtual {v0, p2}, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iget-object v0, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    .line 48
    :goto_0
    iget-object v1, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    invoke-virtual {v0}, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 60
    :cond_0
    invoke-static {v0}, Ltop/zibin/luban/io/GroupedLinkedMap;->removeEntry(Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;)V

    .line 61
    iget-object v1, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    iget-object v2, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->key:Ljava/lang/Object;

    check-cast v1, Ltop/zibin/luban/io/PoolAble;

    invoke-interface {v1}, Ltop/zibin/luban/io/PoolAble;->offer()V

    .line 65
    iget-object v0, v0, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->prev:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    iget-object v1, v1, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    const/4 v2, 0x0

    .line 76
    :goto_0
    iget-object v3, p0, Ltop/zibin/luban/io/GroupedLinkedMap;->head:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v2, 0x7b

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, v1, Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;->next:Ltop/zibin/luban/io/GroupedLinkedMap$LinkedEntry;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 84
    :cond_1
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
