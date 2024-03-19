/**
 * @param {*} obj
 * @param {*} classFunction
 * @return {boolean}
 */
var checkIfInstanceOf = function(obj, classFunction) {
   /* if (obj === undefined || classFunction === undefined){
        return false;
    }
    while
    try{
        if (typeof classFunction === 'function') {
            return value instanceof classFunction;
        } else {
            return classFunction.prototype.isPrototypeOf(value);
        }
    }
    catch (error) {
        return false;
    }*/
    if (Object(obj) && obj !== null && obj !== undefined && classFunction && typeof classFunction == 'function') {
        return Object(obj) instanceof classFunction
    } else {
        return false
    }
    
};

/**
 * checkIfInstanceOf(new Date(), Date); // true
 */